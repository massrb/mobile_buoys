
var StationList = React.createClass({
	
	render: function(){
		var stationNodes = this.props.stations.map(function(station){
			return <Station name={station.name} wvht={station.readings.wvht} 
								  dpd={station.readings.dpd} timeof={station.readings.timeof_conditions}
									wdir={station.readings.wdir} wspd={station.readings.wspd}
									id={station.id} key={station.id}/>
		});
		
		return (
			<div className="station-list">
				<table>
				  <tbody>
					{ stationNodes }
					</tbody>
				</table>
			</div>
		)
		
	}
});