<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href='css/fullcalendar.css' rel='stylesheet' />
<link href='css/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='js/moment.min.js'></script>
<script src='js/jquery.min.js'></script>
<script src='js/fullcalendar.min.js'></script>
</head>
<body>
	<div id="calendar" class="fc fc-cursor fc-ltr fc-unthemed">
		<div class="fc-toolbar">
			<div class="fc-left">
				<div class="fc-button-group">
					<button
						class="fc-prev-button fc-button fc-state-default fc-corner-left"
						type="button">
						<span class="fc-icon fc-icon-left-single-arrow"></span>
					</button>
					<button
						class="fc-next-button fc-button fc-state-default fc-corner-right"
						type="button">
						<span class="fc-icon fc-icon-right-single-arrow"></span>
					</button>
				</div>
				<button
					class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right"
					type="button">today</button>
			</div>
			<div class="fc-right">
				<div class="fc-button-group"></div>
				<div class="fc-center">
					<h2>January 2016</h2>
				</div>
				<div class="fc-clear"></div>
			</div>
			<div class="fc-view-container" style="">
				<div class="fc-view fc-month-view fc-basic-view" style="">
					<table>
						<thead class="fc-head">
							<tr>
								<td class="fc-head-container fc-widget-header">
									<div class="fc-row fc-widget-header">
										<table>
											<thead>
												<tr>
													<th class="fc-day-header fc-widget-header fc-sun">Sun</th>
													<th class="fc-day-header fc-widget-header fc-mon">Mon</th>
													<th class="fc-day-header fc-widget-header fc-tue">Tue</th>
													<th class="fc-day-header fc-widget-header fc-wed">Wed</th>
													<th class="fc-day-header fc-widget-header fc-thu">Thu</th>
													<th class="fc-day-header fc-widget-header fc-fri">Fri</th>
													<th class="fc-day-header fc-widget-header fc-sat">Sat</th>
												</tr>
											</thead>
										</table>
									</div>
								</td>
							</tr>
						</thead>
						<tbody class="fc-body">
							<tr>
								<td class="fc-widget-content">
									<div class="fc-scroller fc-day-grid-container"
										style="overflow: hidden; height: 647px;">
										<div class="fc-day-grid fc-unselectable">
											<div class="fc-row fc-week fc-widget-content fc-rigid"
												style="height: 107px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td
																	class="fc-day fc-widget-content fc-sun fc-other-month fc-past"
																	data-date="2015-12-27"></td>
																<td
																	class="fc-day fc-widget-content fc-mon fc-other-month fc-past"
																	data-date="2015-12-28"></td>
																<td
																	class="fc-day fc-widget-content fc-tue fc-other-month fc-past"
																	data-date="2015-12-29"></td>
																<td
																	class="fc-day fc-widget-content fc-wed fc-other-month fc-past"
																	data-date="2015-12-30"></td>
																<td
																	class="fc-day fc-widget-content fc-thu fc-other-month fc-past"
																	data-date="2015-12-31"></td>
																<td class="fc-day fc-widget-content fc-fri fc-past"
																	data-date="2016-01-01"></td>
																<td class="fc-day fc-widget-content fc-sat fc-past"
																	data-date="2016-01-02"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-other-month fc-past"
																	data-date="2015-12-27">27</td>
																<td class="fc-day-number fc-mon fc-other-month fc-past"
																	data-date="2015-12-28">28</td>
																<td class="fc-day-number fc-tue fc-other-month fc-past"
																	data-date="2015-12-29">29</td>
																<td class="fc-day-number fc-wed fc-other-month fc-past"
																	data-date="2015-12-30">30</td>
																<td class="fc-day-number fc-thu fc-other-month fc-past"
																	data-date="2015-12-31">31</td>
																<td class="fc-day-number fc-fri fc-past"
																	data-date="2016-01-01">1</td>
																<td class="fc-day-number fc-sat fc-past"
																	data-date="2016-01-02">2</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td class="fc-event-container"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable">
																		<div class="fc-content">
																			<span class="fc-title">All Day Event</span>
																		</div>
																		<div class="fc-resizer fc-end-resizer"></div>
																</a></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content fc-rigid"
												style="height: 107px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td class="fc-day fc-widget-content fc-sun fc-past"
																	data-date="2016-01-03"></td>
																<td class="fc-day fc-widget-content fc-mon fc-past"
																	data-date="2016-01-04"></td>
																<td class="fc-day fc-widget-content fc-tue fc-past"
																	data-date="2016-01-05"></td>
																<td class="fc-day fc-widget-content fc-wed fc-past"
																	data-date="2016-01-06"></td>
																<td class="fc-day fc-widget-content fc-thu fc-past"
																	data-date="2016-01-07"></td>
																<td class="fc-day fc-widget-content fc-fri fc-past"
																	data-date="2016-01-08"></td>
																<td class="fc-day fc-widget-content fc-sat fc-past"
																	data-date="2016-01-09"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-past"
																	data-date="2016-01-03">3</td>
																<td class="fc-day-number fc-mon fc-past"
																	data-date="2016-01-04">4</td>
																<td class="fc-day-number fc-tue fc-past"
																	data-date="2016-01-05">5</td>
																<td class="fc-day-number fc-wed fc-past"
																	data-date="2016-01-06">6</td>
																<td class="fc-day-number fc-thu fc-past"
																	data-date="2016-01-07">7</td>
																<td class="fc-day-number fc-fri fc-past"
																	data-date="2016-01-08">8</td>
																<td class="fc-day-number fc-sat fc-past"
																	data-date="2016-01-09">9</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td rowspan="2"></td>
																<td rowspan="2"></td>
																<td rowspan="2"></td>
																<td rowspan="2"></td>
																<td class="fc-event-container" colspan="3"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable">
																		<div class="fc-content">
																			<span class="fc-title">Long Event</span>
																		</div>
																		<div class="fc-resizer fc-end-resizer"></div>
																</a></td>
															</tr>
															<tr>
																<td></td>
																<td></td>
																<td class="fc-event-container"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable">
																		<div class="fc-content">
																			<span class="fc-time">4p</span> <span
																				class="fc-title">Repeating Event</span>
																		</div>
																</a></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content fc-rigid"
												style="height: 107px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td class="fc-day fc-widget-content fc-sun fc-past"
																	data-date="2016-01-10"></td>
																<td class="fc-day fc-widget-content fc-mon fc-past"
																	data-date="2016-01-11"></td>
																<td class="fc-day fc-widget-content fc-tue fc-past"
																	data-date="2016-01-12"></td>
																<td class="fc-day fc-widget-content fc-wed fc-past"
																	data-date="2016-01-13"></td>
																<td class="fc-day fc-widget-content fc-thu fc-past"
																	data-date="2016-01-14"></td>
																<td class="fc-day fc-widget-content fc-fri fc-past"
																	data-date="2016-01-15"></td>
																<td class="fc-day fc-widget-content fc-sat fc-past"
																	data-date="2016-01-16"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-past"
																	data-date="2016-01-10">10</td>
																<td class="fc-day-number fc-mon fc-past"
																	data-date="2016-01-11">11</td>
																<td class="fc-day-number fc-tue fc-past"
																	data-date="2016-01-12">12</td>
																<td class="fc-day-number fc-wed fc-past"
																	data-date="2016-01-13">13</td>
																<td class="fc-day-number fc-thu fc-past"
																	data-date="2016-01-14">14</td>
																<td class="fc-day-number fc-fri fc-past"
																	data-date="2016-01-15">15</td>
																<td class="fc-day-number fc-sat fc-past"
																	data-date="2016-01-16">16</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td rowspan="6"></td>
																<td class="fc-event-container" colspan="2"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable">
																		<div class="fc-content">
																			<span class="fc-title">Conference</span>
																		</div>
																		<div class="fc-resizer fc-end-resizer"></div>
																</a></td>
																<td class="fc-event-container" rowspan="6"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable">
																		<div class="fc-content">
																			<span class="fc-time">7a</span> <span
																				class="fc-title">Birthday Party</span>
																		</div>
																</a></td>
																<td rowspan="6"></td>
																<td rowspan="6"></td>
																<td class="fc-event-container" rowspan="6"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable">
																		<div class="fc-content">
																			<span class="fc-time">4p</span> <span
																				class="fc-title">Repeating Event</span>
																		</div>
																</a></td>
															</tr>
															<tr>
																<td rowspan="5"></td>
																<td class="fc-event-container"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable">
																		<div class="fc-content">
																			<span class="fc-time">10:30a</span> <span
																				class="fc-title">Meeting</span>
																		</div>
																</a></td>
															</tr>
															<tr>
																<td class="fc-event-container"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable">
																		<div class="fc-content">
																			<span class="fc-time">12p</span> <span
																				class="fc-title">Lunch</span>
																		</div>
																</a></td>
															</tr>
															<tr>
																<td class="fc-event-container fc-limited"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable">
																		<div class="fc-content">
																			<span class="fc-time">2:30p</span> <span
																				class="fc-title">Meeting</span>
																		</div>
																</a></td>
																<td class="fc-more-cell" rowspan="1">
																	<div>
																		<a class="fc-more">+3 more</a>
																	</div>
																</td>
															</tr>
															<tr class="fc-limited">
																<td class="fc-event-container"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable">
																		<div class="fc-content">
																			<span class="fc-time">5:30p</span> <span
																				class="fc-title">Happy Hour</span>
																		</div>
																</a></td>
															</tr>
															<tr class="fc-limited">
																<td class="fc-event-container"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable">
																		<div class="fc-content">
																			<span class="fc-time">8p</span> <span
																				class="fc-title">Dinner</span>
																		</div>
																</a></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content fc-rigid"
												style="height: 107px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td class="fc-day fc-widget-content fc-sun fc-past"
																	data-date="2016-01-17"></td>
																<td class="fc-day fc-widget-content fc-mon fc-past"
																	data-date="2016-01-18"></td>
																<td class="fc-day fc-widget-content fc-tue fc-past"
																	data-date="2016-01-19"></td>
																<td class="fc-day fc-widget-content fc-wed fc-past"
																	data-date="2016-01-20"></td>
																<td class="fc-day fc-widget-content fc-thu fc-past"
																	data-date="2016-01-21"></td>
																<td class="fc-day fc-widget-content fc-fri fc-past"
																	data-date="2016-01-22"></td>
																<td class="fc-day fc-widget-content fc-sat fc-past"
																	data-date="2016-01-23"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-past"
																	data-date="2016-01-17">17</td>
																<td class="fc-day-number fc-mon fc-past"
																	data-date="2016-01-18">18</td>
																<td class="fc-day-number fc-tue fc-past"
																	data-date="2016-01-19">19</td>
																<td class="fc-day-number fc-wed fc-past"
																	data-date="2016-01-20">20</td>
																<td class="fc-day-number fc-thu fc-past"
																	data-date="2016-01-21">21</td>
																<td class="fc-day-number fc-fri fc-past"
																	data-date="2016-01-22">22</td>
																<td class="fc-day-number fc-sat fc-past"
																	data-date="2016-01-23">23</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content fc-rigid"
												style="height: 107px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td class="fc-day fc-widget-content fc-sun fc-past"
																	data-date="2016-01-24"></td>
																<td class="fc-day fc-widget-content fc-mon fc-past"
																	data-date="2016-01-25"></td>
																<td class="fc-day fc-widget-content fc-tue fc-past"
																	data-date="2016-01-26"></td>
																<td class="fc-day fc-widget-content fc-wed fc-past"
																	data-date="2016-01-27"></td>
																<td class="fc-day fc-widget-content fc-thu fc-past"
																	data-date="2016-01-28"></td>
																<td class="fc-day fc-widget-content fc-fri fc-past"
																	data-date="2016-01-29"></td>
																<td class="fc-day fc-widget-content fc-sat fc-past"
																	data-date="2016-01-30"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-past"
																	data-date="2016-01-24">24</td>
																<td class="fc-day-number fc-mon fc-past"
																	data-date="2016-01-25">25</td>
																<td class="fc-day-number fc-tue fc-past"
																	data-date="2016-01-26">26</td>
																<td class="fc-day-number fc-wed fc-past"
																	data-date="2016-01-27">27</td>
																<td class="fc-day-number fc-thu fc-past"
																	data-date="2016-01-28">28</td>
																<td class="fc-day-number fc-fri fc-past"
																	data-date="2016-01-29">29</td>
																<td class="fc-day-number fc-sat fc-past"
																	data-date="2016-01-30">30</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td class="fc-event-container"><a
																	class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable"
																	href="http://google.com/"></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="fc-row fc-week fc-widget-content fc-rigid"
												style="height: 112px;">
												<div class="fc-bg">
													<table>
														<tbody>
															<tr>
																<td class="fc-day fc-widget-content fc-sun fc-past"
																	data-date="2016-01-31"></td>
																<td
																	class="fc-day fc-widget-content fc-mon fc-other-month fc-past"
																	data-date="2016-02-01"></td>
																<td
																	class="fc-day fc-widget-content fc-tue fc-other-month fc-past"
																	data-date="2016-02-02"></td>
																<td
																	class="fc-day fc-widget-content fc-wed fc-other-month fc-past"
																	data-date="2016-02-03"></td>
																<td
																	class="fc-day fc-widget-content fc-thu fc-other-month fc-past"
																	data-date="2016-02-04"></td>
																<td
																	class="fc-day fc-widget-content fc-fri fc-other-month fc-past"
																	data-date="2016-02-05"></td>
																<td
																	class="fc-day fc-widget-content fc-sat fc-other-month fc-past"
																	data-date="2016-02-06"></td>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="fc-content-skeleton">
													<table>
														<thead>
															<tr>
																<td class="fc-day-number fc-sun fc-past"
																	data-date="2016-01-31">31</td>
																<td class="fc-day-number fc-mon fc-other-month fc-past"
																	data-date="2016-02-01">1</td>
																<td class="fc-day-number fc-tue fc-other-month fc-past"
																	data-date="2016-02-02">2</td>
																<td class="fc-day-number fc-wed fc-other-month fc-past"
																	data-date="2016-02-03">3</td>
																<td class="fc-day-number fc-thu fc-other-month fc-past"
																	data-date="2016-02-04">4</td>
																<td class="fc-day-number fc-fri fc-other-month fc-past"
																	data-date="2016-02-05">5</td>
																<td class="fc-day-number fc-sat fc-other-month fc-past"
																	data-date="2016-02-06">6</td>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>