	        	<div class="row">
	        		<div class="col-md-6">
	        			<div class="form-group">
	        				<label for="title">Project Title</label>
	        				<textarea class="form-control" name="title" id="title" placeholder="Enter Project Title" required></textarea>
	        			</div>
	        		</div>

	        		<div class="col-md-3">

	        			<div class="form-group">
	        				<label for="des">Project Ref</label>
	        				<input type="text" class="form-control" name="project_ref" id="project_ref" placeholder="Enter Project Ref"  required>
	        			</div>
					</div>
					
					<div class="col-md-3">

					<div class="form-group">
	        				<label for="des">Grant Amount</label>
	        				<input type="text" class="form-control" name="grant_amount" id="grant_amount" placeholder="Enter Grant Amount"  required>
	        			</div>
	        		</div>

				</div>
				
				<div class="row">
	        		<div class="col-md-3">
	        			<div class="form-group">
	        				<label for="title">Duration</label>
	        				<input type="text" class="form-control" name="duration" id="duration" placeholder="Enter Project Duration" id="title" required>
	        			</div>
	        		</div>

	        		<div class="col-md-3">

	        			<div class="form-group">
	        				<label for="des">Date From Gcf</label>
	        				<input type="date" class="form-control" name="date_from_gcf" id="gcf"   required>
	        			</div>
					</div>
					
					<div class="col-md-3">

					<div class="form-group">
	        				<label for="des">Start Date</label>
	        				<input type="date" class="form-control" name="start_date" id="start_date"  required>
	        			</div>
					</div>
					
					<div class="col-md-3">

					<div class="form-group">
	        				<label for="des">End Date</label>
	        				<input type="date" class="form-control" name="end_date" id="end_date"  required>
	        			</div>
	        		</div>

				</div>
				
				<div class="row">
	        		<div class="col-md-4">
	        			<div class="form-group">
	        				<label for="title">Select Office</label>
	        				<select  class="form-control" name="office_id" placeholder="Select Office" required>
								@foreach($offices as $office)
								<option value="{{ $office->id }}">{{ $office->office_name }}</option>
								@endforeach
							</select>
	        			</div>
	        		</div>

	        		<div class="col-md-4">

					<div class="form-group">
	        				<label for="title">Select Country</label>
	        				<select  class="form-control" name="country_id" placeholder="Select Country" required>
							   @foreach($countries as $country)
								<option value="{{ $country->id }}">{{ $country->country_name }}</option>
								@endforeach
							</select>
	        			</div>
					</div>
					
					<div class="col-md-4">

					<div class="form-group">
	        				<label for="title">Select Readiness</label>
	        				<select  class="form-control" name="readiness_id" placeholder="Select Office" required>
							@foreach($readiness as $ready)
								<option value="{{ $ready->id }}">{{ $ready->readiness_type }}</option>
								@endforeach
							</select>
	        			</div>

				</div>
				</div>

				
				<div class="row">
	        		<div class="col-md-4">
	        			<div class="form-group">
	        				<label for="title">Select Readiness Category</label>
	        				<select  class="form-control" name="readiness_category_id" required>
							@foreach($cat as $c)
								<option value="{{ $c->id }}">{{ $c->category }}</option>
								@endforeach
							</select>
	        			</div>
	        		</div>

	        		<div class="col-md-4">

					<div class="form-group">
	        				<label for="des">First Disbursed Amount</label>
	        				<input type="text" class="form-control" name="first_disbursement_amount" id="disbursed_amount" placeholder="Enter  Amount"  required>
	        			</div>
	        	
	        			
					</div>
					
					<div class="col-md-4">

					<div class="form-group">
	        				<label for="title">Select Status</label>
	        				<select  class="form-control" name="project_status" placeholder="Select Office" required>
							@foreach($status as $stat)
								<option >{{ $stat }}</option>
								@endforeach
							</select>
						</div>
					</div>

				</div>
				