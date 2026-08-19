.class Lcom/perm/kate/MessageThreadFragment$31;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1881
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1884
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1887
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    .line 1888
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$31;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1, v0}, Lcom/perm/kate/MessageThreadFragment;->access$4100(Lcom/perm/kate/MessageThreadFragment;Z)V

    :cond_1
    return-void
.end method
