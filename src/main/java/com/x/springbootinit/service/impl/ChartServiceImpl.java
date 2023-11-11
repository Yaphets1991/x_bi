package com.x.springbootinit.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.x.springbootinit.service.ChartService;
import com.x.springbootinit.mapper.ChartMapper;
import com.x.springbootinit.model.entity.Chart;
import org.springframework.stereotype.Service;

/**
* @author pc
* @description 针对表【chart(图表信息表)】的数据库操作Service实现
* @createDate 2023-11-05 22:06:18
*/
@Service
public class ChartServiceImpl extends ServiceImpl<ChartMapper, Chart>
    implements ChartService {

}




