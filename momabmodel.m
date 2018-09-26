% Show data communication to and from MATLAB

function A = momabmodel(modeldir, solver, myu, eta)
  ampl = AMPL;
  % Initialize.
  if nargin > 0
	modeldirectory = fullfile(modeldir, 'molp');
  else
	basef = fileparts(which('dietModel'));
	addpath(fullfile(basef, '../../matlab'));
	modeldirectory = fullfile(basef, '..', 'models', 'diet');
  end
  if nargin > 1
    ampl.setOption('solver', solver);
  end
  
  % Load from file the ampl model
  ampl.read([modeldirectory  '/molp.mod']);
  ampl.getParameter('eta').setValues(eta);
  ampl.getParameter('u').setValues(myu);

  % Solve
  ampl.solve
    
  A = ampl.getVariable('x');

  ampl.close()
end
