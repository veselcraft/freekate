.class Lcom/perm/kate/SettingsPaint$3;
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

    .line 140
    iput-object p1, p0, Lcom/perm/kate/SettingsPaint$3;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$3;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1, p2}, Lcom/perm/kate/SettingsPaint;->access$302(Lcom/perm/kate/SettingsPaint;I)I

    .line 154
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$3;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1}, Lcom/perm/kate/SettingsPaint;->access$200(Lcom/perm/kate/SettingsPaint;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$3;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/perm/kate/SettingsPaint;->access$302(Lcom/perm/kate/SettingsPaint;I)I

    .line 144
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$3;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1}, Lcom/perm/kate/SettingsPaint;->access$200(Lcom/perm/kate/SettingsPaint;)V

    return-void
.end method
