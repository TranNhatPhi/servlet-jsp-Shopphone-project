package me.thshop.dao;

import me.thshop.entity.InformationEntity;

public interface IInformationDAO {
	InformationEntity findOne(Integer infId);
	void update(InformationEntity informationEntity);
	Integer insert(InformationEntity informationEntity);
	void delete(Integer informationId);
}
