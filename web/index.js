import { main, mkAppReactBasicHooks } from "../output/Test.Sample.Main";
import * as ReactDOM from 'react-dom';

main();

const appReact = mkAppReactBasicHooks()

const root = ReactDOM.createRoot(document.getElementById('root-react'));
root.render(appReact({}));