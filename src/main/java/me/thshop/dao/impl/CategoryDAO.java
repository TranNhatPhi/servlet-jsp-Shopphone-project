package me.thshop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import me.thshop.dao.ICategoryDAO;
import me.thshop.entity.CategoryEntity;
import me.thshop.utils.DBUtil;

public class CategoryDAO implements ICategoryDAO{

	@SuppressWarnings("unchecked")
	@Override
	public List<CategoryEntity> findAll() {
		Transaction transaction = null;
		List<CategoryEntity> list = null;
		String hql = "FROM CategoryEntity";
		try {
			Session session = DBUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			@SuppressWarnings("rawtypes")
			Query query = session.createQuery(hql);
			list = query.list();
			transaction.commit();
			session.close();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public CategoryEntity findOne(Integer categoryId) {
		Transaction transaction = null;
		CategoryEntity categoryEntity = null;
		try {
			Session session = DBUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			categoryEntity = session.get(CategoryEntity.class, categoryId);
			transaction.commit();
			session.close();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return categoryEntity;
	}

}
