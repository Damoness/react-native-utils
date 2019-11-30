import { NativeModules } from 'react-native';

const {ImpactFeedbackManager} = NativeModules ;


export default class ImpactFeedback{

    static impactOccurred(){
        
        ImpactFeedbackManager && ImpactFeedbackManager.impactOccurred()
    }

}



