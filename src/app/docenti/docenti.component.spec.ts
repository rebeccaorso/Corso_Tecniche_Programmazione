import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DocentiComponent } from './docenti.component';

describe('DocentiComponent', () => {
  let component: DocentiComponent;
  let fixture: ComponentFixture<DocentiComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DocentiComponent]
    });
    fixture = TestBed.createComponent(DocentiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
