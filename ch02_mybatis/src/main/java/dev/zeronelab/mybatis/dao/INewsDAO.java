package dev.zeronelab.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import dev.zeronelab.mybatis.vo.NewsEntity;

@Mapper
public interface INewsDAO {
	public List<NewsEntity> listNews();
}
