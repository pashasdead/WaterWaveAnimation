//
//  ViewController.swift
//  WaterWave
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var waveContainerView: UIView!
    
    var waterWaveCoordinator: WaterWaveCoordinator?
    
    @IBOutlet weak var textview: UITextView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        waterWaveCoordinator = WaterWaveCoordinator(waveContainerView)
//        waterWaveCoordinator?.beginTimer(60)
        waterWaveCoordinator?.waveView.fullness = 0.5
        waterWaveCoordinator?.waveView.start()
        
        
        waveContainerView.layer.shadowColor = UIColor.black.cgColor
        waveContainerView.layer.shadowOpacity = 0.5
        waveContainerView.layer.shadowOffset = CGSize.zero
        waveContainerView.layer.shadowRadius = 10
        
        textview.text = "http://advisa.work/bank_partner/webview01.html"
        textview.textColor = UIColor.green
    }
    
    @IBOutlet weak var waveHeight: UISlider!
    
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        print(#function, CGFloat(sender.value))
        waterWaveCoordinator?.waveView.fullness = CGFloat(sender.value)
    }

    @IBAction func amplitideSliderValueChanged(_ sender: UISlider) {
        print(#function, CGFloat(sender.value))
        waterWaveCoordinator?.waveView.waveHeight = CGFloat(sender.value)
    }

    @IBAction func periodSliderValueChanged(_ sender: UISlider) {
        print(#function, CGFloat(sender.value))
        waterWaveCoordinator?.waveView.waveLength = CGFloat(sender.value)
    }
    
    @IBAction func speedSliderValueChanged(_ sender: UISlider) {
        print(#function, CGFloat(sender.value))
        waterWaveCoordinator?.waveView.waveSpeed = CGFloat(sender.value)
    }
    
    @IBAction func phaseValueChanged(_ sender: UISlider) {
        print(#function, CGFloat(sender.value))
        waterWaveCoordinator?.waveView.phase = CGFloat(sender.value)
    }

    @IBAction func startOrStopSwitchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            waterWaveCoordinator?.waveView.start()
        } else {
            waterWaveCoordinator?.waveView.stop()
        }
    }
}

