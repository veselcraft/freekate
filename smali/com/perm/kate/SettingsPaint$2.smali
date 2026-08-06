.class Lcom/perm/kate/SettingsPaint$2;
.super Ljava/lang/Object;
.source "SettingsPaint.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SettingsPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SettingsPaint;


# direct methods
.method constructor <init>(Lcom/perm/kate/SettingsPaint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SettingsPaint;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/perm/kate/SettingsPaint$2;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$2;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0, p2}, Lcom/perm/kate/SettingsPaint;->access$102(Lcom/perm/kate/SettingsPaint;I)I

    .line 135
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$2;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0}, Lcom/perm/kate/SettingsPaint;->access$200(Lcom/perm/kate/SettingsPaint;)V

    .line 136
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 129
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$2;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/perm/kate/SettingsPaint;->access$102(Lcom/perm/kate/SettingsPaint;I)I

    .line 125
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$2;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0}, Lcom/perm/kate/SettingsPaint;->access$200(Lcom/perm/kate/SettingsPaint;)V

    .line 126
    return-void
.end method
