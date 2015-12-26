
var ProfileStations = React.createClass({
	getInitialState: function () {
    return JSON.parse(this.props.prof);
  },
  
	render: function(){
		return (
			<StationList stations={this.state.stations}/>
		)
		
	}
	
});