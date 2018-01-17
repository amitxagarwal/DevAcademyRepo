using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using AzureAppServiceDevAcademy.Models;

namespace AzureAppServiceDevAcademy.Controllers
{
    public class EmployeeEnrollmentsController : Controller
    {
        private appservicedevacademydbEntities1 db = new appservicedevacademydbEntities1();

        // GET: EmployeeEnrollments
        public ActionResult Index()
        {
            return View(db.EmployeeEnrollments.ToList());
        }

        // GET: EmployeeEnrollments/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmployeeEnrollment employeeEnrollment = db.EmployeeEnrollments.Find(id);
            if (employeeEnrollment == null)
            {
                return HttpNotFound();
            }
            return View(employeeEnrollment);
        }

        // GET: EmployeeEnrollments/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: EmployeeEnrollments/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "EmployeeId,EmployeeName,EmployeeEnrollmentStatus,EmployeeEnrollmentPrescreeningStatus,EmployeeFinalAssessmentStatus")] EmployeeEnrollment employeeEnrollment)
        {
            if (ModelState.IsValid)
            {
                db.EmployeeEnrollments.Add(employeeEnrollment);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(employeeEnrollment);
        }

        // GET: EmployeeEnrollments/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmployeeEnrollment employeeEnrollment = db.EmployeeEnrollments.Find(id);
            if (employeeEnrollment == null)
            {
                return HttpNotFound();
            }
            return View(employeeEnrollment);
        }

        // POST: EmployeeEnrollments/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "EmployeeId,EmployeeName,EmployeeEnrollmentStatus,EmployeeEnrollmentPrescreeningStatus,EmployeeFinalAssessmentStatus")] EmployeeEnrollment employeeEnrollment)
        {
            if (ModelState.IsValid)
            {
                db.Entry(employeeEnrollment).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(employeeEnrollment);
        }

        // GET: EmployeeEnrollments/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EmployeeEnrollment employeeEnrollment = db.EmployeeEnrollments.Find(id);
            if (employeeEnrollment == null)
            {
                return HttpNotFound();
            }
            return View(employeeEnrollment);
        }

        // POST: EmployeeEnrollments/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            EmployeeEnrollment employeeEnrollment = db.EmployeeEnrollments.Find(id);
            db.EmployeeEnrollments.Remove(employeeEnrollment);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
