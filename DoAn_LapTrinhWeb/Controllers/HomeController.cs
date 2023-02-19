using DoAn_LapTrinhWeb.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.Mvc;
// using DoAn_LapTrinhWeb.Models;
namespace DoAn_LapTrinhWeb.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        private DbContext db = new DbContext();
        public ActionResult Index()
        {
            //hiển thị những sản phẩm mới được mua nhiều nhất
            var query1 = (from row in db.Products
                          where row.quantity != "0" && row.status == "1"
                          orderby row.product_id descending
                          select row).Take(50).ToList();

            var query2 = (from row in db.Products
                          where row.quantity != "0" && row.status == "1"
                          orderby row.buyturn descending, row.create_at descending
                          select row).Take(50).ToList();
            //sản phẩm mới
            List<Product> newproduct = query2.Intersect(query1).Take(4).ToList();
            ViewBag.NewProduct = newproduct;
            //hiển thị những sản phẩm hot được mua nhiều nhất
            List<Product> hotproduct = db.Products.Where(item => item.status == "1" && item.quantity != "0").Take(20).OrderByDescending(item => item.buyturn).ToList();
            ViewBag.HotProduct = hotproduct;
            List<Product> hotproductmobile = db.Products.Where(item => item.status == "1" && item.quantity != "0").Take(4).OrderByDescending(item => item.buyturn).ToList();
            ViewBag.HotProductmobile = hotproductmobile;
            //hiển thị những bình hút tài lộc được mua nhiều nhất
            List<Product> binhhuttailoc = db.Products.Where(item => item.status == "1" && item.quantity != "0" && item.Genre.ParentGenres.id == 1).Take(4).OrderByDescending(item => item.buyturn).ToList();
            ViewBag.BinhHutTaiLoc = binhhuttailoc;
            //hiển thị những đồ thờ cúng được mua nhiều nhất
            List<Product> dothocung = db.Products.Where(item => item.status == "1" && item.quantity != "0" && item.Genre.ParentGenres.id == 2).Take(4).OrderByDescending(item => item.buyturn).ToList();
            ViewBag.DoThoCung = dothocung;
            //hiển thị những gốm gia dụng được mua nhiều nhất
            List<Product> gomgiadung = db.Products.Where(item => item.status == "1" && item.quantity != "0" && item.Genre.ParentGenres.id == 3).Take(4).OrderByDescending(item => item.buyturn).ToList();
            ViewBag.GomGiaDung = gomgiadung;
            //hiển thị những lộc bình được mua nhiều nhất
            List<Product> locbinh = db.Products.Where(item => item.status == "1" && item.quantity != "0" && item.Genre.ParentGenres.id == 4).Take(4).OrderByDescending(item => item.buyturn).ToList();
            ViewBag.LocBinh = locbinh;
            //hiển thị những quà tặng gốm sứ được mua nhiều nhất
            List<Product> quatanggomsu = db.Products.Where(item => item.status == "1" && item.quantity != "0" && item.Genre.ParentGenres.id == 5).Take(4).OrderByDescending(item => item.buyturn).ToList();
            ViewBag.QuaTang = quatanggomsu;
            //hiển thị những tranh sứ được mua nhiều nhất
            List<Product> tranhsu = db.Products.Where(item => item.status == "1" && item.quantity != "0" && item.Genre.ParentGenres.id == 6).Take(4).OrderByDescending(item => item.buyturn).ToList();
            ViewBag.TranhSu = tranhsu;
            //hiển thị tin tức
            List<News> recentnews = db.News.Where(item => item.status == "1").Take(3).OrderByDescending(item => item.create_at).ThenBy(m => m.ViewCount).ToList();
            ViewBag.Recentnews = recentnews;
            List<Brand> brand = db.Brands.Where(item => item.status == "1").Take(5).OrderByDescending(m => m.Products.Count()).ToList();
            ViewBag.Brand = brand;
            //banner khuyến mãi
            ViewBag.BannerHeader = db.Banners.OrderByDescending(m => Guid.NewGuid()).Where(m => m.banner_start < DateTime.Now && m.banner_end > DateTime.Now && m.status == "1" && m.banner_type == 1).Take(16).ToList();
            ViewBag.BannerBottom = db.Banners.OrderByDescending(m => m.banner_id).Where(m => m.banner_start < DateTime.Now && m.banner_end > DateTime.Now && m.status == "1" && m.banner_type == 2).Take(4).ToList();
            ViewBag.BannerVertical = db.Banners.OrderByDescending(m => m.banner_id).Where(m => m.banner_start < DateTime.Now && m.banner_end > DateTime.Now && m.status == "1" && m.banner_type == 4).Take(1).ToList();
            //sản phẩm khuyến mãi
            ViewBag.BannerDetail = db.Banner_Detail.ToList();
            //trung bình sao
            ViewBag.AvgFeedback = db.Feedbacks.ToList();
            ViewBag.OrderFeedback = db.Order_Detail.ToList();
            BannerGlobal();
            return View();
        }
        //Error 404 hiện khi sai URL
        public ActionResult PageNotFound()
        {
            BannerGlobal();
            return View();
        }
        //View Gửi yêu cầu hỗ trợ
        public ActionResult SentRequest()
        {
            BannerGlobal();
            return View();
        }
        //Code cử lý Gửi yêu càu hỗ trợ
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SentRequest(Contact contact)
        {
            try
            {
                if (contact.ImageUpload != null)
                {
                    string fileName = Path.GetFileNameWithoutExtension(contact.ImageUpload.FileName);
                    string extension = Path.GetExtension(contact.ImageUpload.FileName);
                    fileName = SlugGenerator.SlugGenerator.GenerateSlug(fileName) + "-" + DateTime.Now.ToString("dd-MM-yyyy-HH-mm-ss") + extension;
                    contact.image = "/Images/ImagesContact/" + fileName;
                    fileName = Path.Combine(Server.MapPath("~/Images/ImagesContact/"), fileName);
                    contact.ImageUpload.SaveAs(fileName);
                }
                contact.phone = contact.phone;
                contact.content = contact.content;
                contact.name = contact.name;
                contact.email = contact.email;
                contact.flag = 0;
                contact.status = "1";
                contact.create_by = contact.email;
                contact.update_by = contact.email;
                contact.update_at = DateTime.Now;
                contact.create_at = DateTime.Now;
                db.Contacts.Add(contact);
                db.SaveChanges();
                Notification.set_flash("Gửi yêu cầu thành công", "success");
                BannerGlobal();
                return View("SentRequest");
            }
            catch
            {
                Notification.set_flash("Gửi yêu cầu thất bại", "danger");
                BannerGlobal();
                return View();
            }
        }
        //hiển thị banner toàn layout
        public void BannerGlobal()
        {
            ViewBag.BannerTopHorizontal = db.Banners.OrderByDescending(m => Guid.NewGuid()).Where(m => m.banner_start < DateTime.Now && m.banner_end > DateTime.Now && m.status == "1" && m.banner_type == 3).Take(8).ToList();
        }
    }
}