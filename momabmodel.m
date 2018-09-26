% Show data communication to and from MATLAB

function A = momabmodel(modeldir, myu,eta)
  ampl = AMPL;
  % Initialize.
  if nargin > 0
	modeldirectory = fullfile(modeldir, 'aagam');
  else
	basef = fileparts(which('dietModel'));
	addpath(fullfile(basef, '../../matlab'));
	modeldirectory = fullfile(basef, '..', 'models', 'diet');
  end
%   if nargin > 1
%     ampl.setOption('solver', solver);
%   end
  
  % Load from file the ampl model
  ampl.read([modeldirectory  '/molp.mod']);
  ampl.readData([modeldirectory  '/molp.dat']);
  %C =ampl.getParameter('u');
  ampl.getParameter('eta').setValues(eta);
  ampl.getParameter('u').setValues(myu);
%   df = DataFrame(5, '1', '2', '3','4','5','u');
  % Set the values in the DataFrame
%   df.setMatrix(myu,1, 2,3,4,5);
  % Set the values to the parameter
%   ampl.setData(df);
  % Check that assignment worked correctly
%   ampl.display('u')
  % Solve
  ampl.solve;
  A = ampl.getVariable('x').getValues();
  %B.getValues()
  %A.getValues()
  ampl.close()
end
