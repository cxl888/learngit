// JavaScript Document

//首页搜索
$(function(){

	$(".morenav").click(function(){
	   	flag=1;
	});
	
	$(".qymorenav").click(function(){
	   	qyflag=1;
	});
	
	//定制新增效果结束
			
			$(".searchtext").focus(function(){
				var searchtext=$(".searchtext").val();
				$(".searchtext").css("color","#333");
				if(searchtext=="请输入要查询的内容"){
				    $(this).val("");
					$(".searchX").hide();	
					}else{
				        $(".searchX").show();	
						}	
				})
			$(".searchtext").blur(function(){
				var searchtext=$(".searchtext").val();
				//$(".searchX").hide();	
				if(searchtext==""){
			    	$(this).val("请输入要查询的内容");	
					$(".searchtext").css("color","#999");
					$(".searchX").hide();
					}else{
						$(".searchX").click(function(){
							$(".searchtext").val("");
							$(".searchX").hide();	
							$(".searchtext").val("请输入要查询的内容");
							$(".searchtext").css("color","#999");	
				        })
					}
				})
				
})
	

$(function(){
	//顶部导航最新
					 
					 jQuery(document).ready(function(){
						var qcloud={};
						$('[_t_nav]').hover(function(){
							var _nav = $(this).attr('_t_nav');
							//$(this).find("a").css("color","#333");
							clearTimeout( qcloud[ _nav + '_timer' ] );
							qcloud[ _nav + '_timer' ] = setTimeout(function(){
							$('[_t_nav]').each(function(){
							$(this)[ _nav == $(this).attr('_t_nav') ? 'addClass':'removeClass' ]('nav-up-selected');
							});
							$('#'+_nav).stop(true,true).slideDown(200);
							}, 150);
							//$(this).children(".navbgline").show();
							//$(".nav-up-selected").children(".navbgline").show();
							
							var nav=$(this).children("a").attr('class');
							$(this).children("a").attr("class",_nav+'01_ch');
							
							var Hnew=$(this).attr("class");
							if(Hnew=="home"){
								//$(".imgneNew").height("auto");
								$(".navN2box").show();
								}else{
								//$(".imgneNew").height("245px");	
								$(".navN2box").hide();
							}
							var jnew=$(this).attr("class");
							if(jnew=="jg"){
								//$(".imgneNew").height("auto");
								$(".navN2box").show();
								}
							
						},function(){
							var _nav = $(this).attr('_t_nav');
							//$(this).find("a").css("color","");
							clearTimeout( qcloud[ _nav + '_timer' ] );
							qcloud[ _nav + '_timer' ] = setTimeout(function(){
							$('[_t_nav]').removeClass('nav-up-selected');
							$('#'+_nav).stop(true,true).slideUp(200);
							}, 150);
							$(this).children("a").attr("class",_nav+'01');
						    //$(this).children(".navbgline").hide();
							//$(".nav-up-selected").children(".navbgline").hide();
							//$(".imgneNew").height("auto");
							$(".navN2box").show();
						});
						
					});
					
	                //导航内tab签
		                    $(".nav03Left02").hover(function(){
									$(".nav03Left02bg").hide();
									$(this).find(".nav03Left02bg").show();
									$(".nav03Left02_contentbox").hide();
									$(".nav03Left02").removeClass("nav03Left02color");
									$(this).addClass("nav03Left02color");
									var nav03Left02=$(this).attr("id");
									$("#"+nav03Left02+"_content").show();
									 })
								 $(".nav03Left05").hover(function(){
									$(".nav03Left05bg").hide();
									$(this).find(".nav03Left05bg").show();
									$(".nav03Left05_contentbox").hide();
									$(".nav03Left05").removeClass("nav03Left05color");
									$(this).addClass("nav03Left05color");
									var nav03Left05=$(this).attr("id");
									$("#"+nav03Left05+"_content").show();
								
							      })
								  $(".nav03Right01").hover(function(){
									 $(".nav03Right0101").hide();
									 $(this).find(".nav03Right0101").show();
									 $(".nav03Right01").find(".nav03Right01line").hide();
									 $(".navimg").removeClass("navimgcolor");
									 $(this).find(".navimg").addClass("navimgcolor");
									 $(this).find(".nav03Right01line").show();
									 var nav03Right01content=$(this).attr("id");
									 $(".nav03Right02").hide();
									 $("#"+nav03Right01content+"_content").show();
									 })
								  $(".nav04Left02").hover(function(){
										$(".nav04Left02").removeClass("nav04Left02bg");
										$(this).addClass("nav04Left02bg");
										$(".nav04Left02_contentbox").hide();
										var nav04Left02=$(this).attr("id");
										$("#"+nav04Left02+"_content").show();
									 })
								  $(".nav04Left05").hover(function(){
										$(".nav04Left05").removeClass("nav04Left05bg");
										$(this).addClass("nav04Left05bg");
										$(".nav04Left05_contentbox").hide();
										var nav04Left05=$(this).attr("id");
										$("#"+nav04Left05+"_content").show();
								
							      })
								  $(".nav06Left02").hover(function(){;
										$(".nav06Left02bg").hide();
									    $(this).find(".nav06Left02bg").show();
										$(".nav06img").removeClass("nav06imgcolor");
									     $(this).find(".nav06img").addClass("nav06imgcolor");
										$(".nav06Left02_contentbox").hide();
										var nav06Left02=$(this).attr("id");
										$("#"+nav06Left02+"_content").show();
									 })
									 
								$(".contentLeft0102").hover(function(){
									$(this).css("background","url(/images/ico4.1.png) no-repeat left center");
									},function(){
									$(this).css("background","url(/images/ico4.png) no-repeat left center");	
								})
								
								$(".contentLeft0401content0201").hover(function(){
									$(this).css("background","url(/images/ico4.1.png) no-repeat left center");
									},function(){
									$(this).css("background","url(images/ico4.png) no-repeat left center");	
								})
								$(".contentRgiht05_new_01").hover(function(){
									$(this).css("background","url(/images/ico4.1.png) no-repeat left 8px");
									},function(){
									$(this).css("background","url(images/ico4.png) no-repeat left 8px");	
								})
								$(".Three_zhnlist_0201").hover(function(){
									$(this).css("background","url(/images/ico4.1.png) no-repeat left center");
									},function(){
									$(this).css("background","url(/images/ico4.png) no-repeat left center");	
								})
								
								//右侧浮动
								$(window).scroll(function(){
									var xx=$(window).scrollTop();
									var yy=$(document).height();
									var zz=$(window).height();
									if(yy-zz-xx<=300){
										$(".fdwindow").css("bottom",350-(yy-zz-xx)+"px");
										}else{
											}
								     });
									 
									 
								 $(".wx").hover(function(){
									 $(this).addClass("wx01")
									 },function(){
									 $(this).removeClass("wx01")
									 $(this).addClass("wx")
									 });
								 $(".wb").hover(function(){
									 $(this).addClass("wb01")
									 },function(){
									 $(this).removeClass("wb01")
									 $(this).addClass("wb")
									 })
								 $(".ly").hover(function(){
									 $(this).addClass("ly01")
									 },function(){
									 $(this).removeClass("ly01")
									 $(this).addClass("ly")
									 })
									 
									 $(".nav08Left0102").hover(function(){
										 $(this).addClass("nav08Left0102hover");
										 },function(){
										 $(this).removeClass("nav08Left0102hover");	 
									   })
									 
									 $(".nav08Left0102").each(function(){	
											var navlen=$(this).text();
											var navlenL=navlen.length;
											//alert(navlenL)
											//alert(navlenL)
											if(navlenL>13){
												$(this).addClass("nav08Left0102a");
												}else{
												$(this).removeClass("nav08Left0102a");	
										}
									})
									
									var bgH=$(document).height()
									$(".zhbg").height(bgH);
									
								$(".Second_news_0101").hover(function(){
								    $(".Second_news_0101").removeClass("Second_news_0101bg");
								    $(this).addClass("Second_news_0101bg")	
									$(".Second_news_0101_content").hide();
									var Second_news_0101_content=$(this).attr("id");
									$("#"+Second_news_0101_content+"_content").show();
								 })
									
								$(".Second_news_0201").hover(function(){
								    $(".Second_news_0201").removeClass("Second_news_0201bg");
								    $(this).addClass("Second_news_0201bg")	
									$(".Second_news_0201_content").hide();
									var Second_news_0201_content=$(this).attr("id");
									$("#"+Second_news_0201_content+"_content").show();
								 })
	
	                            $(".Second_news_0701").hover(function(){
								    $(".Second_news_0701").removeClass("Second_news_0701bg");
								    $(this).addClass("Second_news_0701bg")	
									$(".Second_news_0701_content").hide();
									var Second_news_0701_content=$(this).attr("id");
									$("#"+Second_news_0701_content+"_content").show();
								 })
								$(".Second_news_0401").hover(function(){
								    $(".Second_news_0401").removeClass("Second_news_0401bg");
								    $(this).addClass("Second_news_0401bg")	
									$(".Second_news_0401_content").hide();
									var Second_news_0401_content=$(this).attr("id");
									$("#"+Second_news_0401_content+"_content").show();
								 })
								 $(".Second_zhw_0202").hover(function(){
								    $(".Second_zhw_0202").removeClass("Second_zhw_0202bg");
								    $(this).addClass("Second_zhw_0202bg")	
									$(".Second_zhw_0202_content").hide();
									var Second_zhw_0202_content=$(this).attr("id");
									$("#"+Second_zhw_0202_content+"_content").show();
								 })
								 
								 //政务
								 $(".Second_zhw_0301").hover(function(){
									 $(this).addClass("Second_zhw_0301H")
									 },function(){
									$(this).removeClass("Second_zhw_0301H")	 
								   })
								  $(".Second_zhw_0302").hover(function(){
									 $(this).addClass("Second_zhw_0302H")
									 },function(){
									$(this).removeClass("Second_zhw_0302H")	 
								   })
								  $(".Second_zhw_0303").hover(function(){
									 $(this).addClass("Second_zhw_0303H")
									 },function(){
									$(this).removeClass("Second_zhw_0303H")	 
								   })
								  $(".Second_zhw_0304").hover(function(){
									 $(this).addClass("Second_zhw_0304H")
									 },function(){
									$(this).removeClass("Second_zhw_0304H")	 
								   })
								   
								 $(".Second_zhw_0402").hover(function(){
								    $(".Second_zhw_0402").removeClass("Second_zhw_0402bg");
								    $(this).addClass("Second_zhw_0402bg")	
									$(".Second_zhw_0402_content").hide();
									var Second_zhw_0402_content=$(this).attr("id");
									$("#"+Second_zhw_0402_content+"_content").show();
								   })
								  $(".Second_zhw_0501").hover(function(){
								    $(".Second_zhw_0501").removeClass("Second_zhw_0501bg");
								    $(this).addClass("Second_zhw_0501bg")	
									$(".Second_zhw_0501_content").hide();
									var Second_zhw_0501_content=$(this).attr("id");
									$("#"+Second_zhw_0501_content+"_content").show();
								   })
								  $(".Second_zhw_0503").hover(function(){
								    $(".Second_zhw_0503").removeClass("Second_zhw_0503bg");
								    $(this).addClass("Second_zhw_0503bg")	
									$(".Second_zhw_0503_content").hide();
									var Second_zhw_0503_content=$(this).attr("id");
									$("#"+Second_zhw_0503_content+"_content").show();
								   })
								   
								 //服务
								   
								   $(".Second_fuw_0202").hover(function(){
								    $(".Second_fuw_0202").removeClass("Second_fuw_0202bg");
								    $(this).addClass("Second_fuw_0202bg")	
									$(".Second_fuw_0202_content").hide();
									var Second_fuw_0202_content=$(this).attr("id");
									$("#"+Second_fuw_0202_content+"_content").show();
									$(".Second_zhw_inputbg").hide();
									var Second_zhw_inputbg_input=$(this).attr("id");
									//alert(Second_zhw_inputbg_input);
									$("#"+Second_zhw_inputbg_input+"_input").show();
								   })
								   
								   $(".Second_fuw_0202_content01").hover(function(){
								    $(".Second_fuw_0202_content01").removeClass("Second_fuw_0202_content01bg");
								    $(this).addClass("Second_fuw_0202_content01bg")	
									$(".Second_fuw_0202_content01_content").hide();
									var Second_fuw_0202_content01_content=$(this).attr("id");
									$("#"+Second_fuw_0202_content01_content+"_content").show();
								   })
								   $(".Second_fuw_0204_content01").hover(function(){
								    $(".Second_fuw_0204_content01").removeClass("Second_fuw_0204_content01bg");
								    $(this).addClass("Second_fuw_0204_content01bg")	
									$(".Second_fuw_0204_content01_content").hide();
									var Second_fuw_0204_content01_content=$(this).attr("id");
									$("#"+Second_fuw_0204_content01_content+"_content").show();
								   })
								  $(".Second_fuw_0602").hover(function(){
								    $(".Second_fuw_0602").removeClass("Second_fuw_0602bg");
								    $(this).addClass("Second_fuw_0602bg")	
									$(".Second_fuw_0602_content").hide();
									var Second_fuw_0602_content=$(this).attr("id");
									$("#"+Second_fuw_0602_content+"_content").show();
								   })
								   
								 
								 $(".searchtext01").focus(function(){
										var searchtext01=$(".searchtext01").val();
										$(".searchtext01").css("color","#333");
										if(searchtext01=="请输入要查询的内容"){
											$(this).val("");
											$(".searchX").hide();	
											}else{
												$(".searchX").show();	
												}	
										})
									$(".searchtext01").blur(function(){
										var searchtext01=$(".searchtext01").val();
										//$(".searchX").hide();	
										if(searchtext01==""){
											$(this).val("请输入要查询的内容");	
											$(".searchtext01").css("color","#999");
											$(".searchX").hide();
											}else{
												$(".searchX").click(function(){
													$(".searchtext01").val("");
													$(".searchX").hide();	
													$(".searchtext01").val("请输入要查询的内容");
													$(".searchtext01").css("color","#999");	
												})
											}
										})
										
										
						$(".contentLeft0101").hover(function(){
							$(".contentLeft0101").removeClass("contentLeft0101bg");
							$(this).addClass("contentLeft0101bg");
							var contentLeft0101box=$(this).attr("id");
							$(".contentLeft0102_contentbox").hide();
							$("#"+contentLeft0101box+"_content").show();
							$(".contentLeftNew02").hide();
							$(this).find(".contentLeftNew02").show();
							$(".contentLeftNew03").hide();
							$(this).find(".contentLeftNew03").show();
						})
                    
                    $(".sama-5-1").hover(function(){
							$(".sama-5-1").removeClass("sama-5-1bg");
							$(this).addClass("sama-5-1bg");
						var samaclass=$(this).hasClass("sama-5-2")
						if(samaclass){
						    $(this).removeClass("sama-5-1bg");		
						  }
							var sama51=$(this).attr("id");
							$(".sama-6-2").hide();
							$("#"+sama51+"-content").show();
							$(".contentLeftNew02").hide();
							$(this).find(".contentLeftNew02").show();
							$(".contentLeftNew03").hide();
							$(this).find(".contentLeftNew03").show();
						})

					
					$(".sama-jg-1").hover(function(){
						$(".sama-jg-1").find(".navimg").removeClass("navimgcolor");
						$(this).find(".navimg").addClass("navimgcolor");
						var samajg=$(this).attr("id");
						$(".sama-jg-content").hide();
						$("#"+samajg+"-content").show();
						})
	
                   //浮动窗
					$(".samaclose").click(function(){
						$(".gg").animate({right:"-500px"},500);	
						$(".gg-img").show(200);	
					})
					$(".gg-img") .click(function(){
						$(".gg").animate({right:"5px"},500);	
						$(".gg-img").hide(200);			
					})
	
	               $(".Search_content_03").click(function(){
					   $(".Search_content_03").removeClass("Search_content_04");
					   $(this).addClass("Search_content_04");
				   })
	
				   
	
	})