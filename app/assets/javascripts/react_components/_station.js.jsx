var Station = React.createClass({
	
	render: function(){
	  var wave_reading = this.props.wvht;
		var wind_reading = this.props.wdir;
		
		if (this.props.wvht && this.props.dpd) {
		  wave_reading = this.props.wvht + "@" + this.props.dpd;
		}
		
		if (this.props.wdir && this.props.wspd) {
		  wind_reading = this.props.wdir + "@" + this.props.wspd;
		}
		
		if (!wave_reading && !wind_reading && !this.props.timeof) {
		  wave_reading = "(No Readings)"
		}
	
		return(
		<tr>
		  <td>{this.props.name}</td>
			<td>{wave_reading}</td>
			<td>{wind_reading}</td>
			<td>{this.props.timeof}</td>
		</tr>
		)
	}
	
});