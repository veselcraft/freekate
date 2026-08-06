.class Lcom/perm/kate/SettingsPaint$5;
.super Ljava/lang/Object;
.source "SettingsPaint.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 175
    iput-object p1, p0, Lcom/perm/kate/SettingsPaint$5;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$5;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0, p2}, Lcom/perm/kate/SettingsPaint;->access$502(Lcom/perm/kate/SettingsPaint;Z)Z

    .line 179
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$5;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0}, Lcom/perm/kate/SettingsPaint;->access$200(Lcom/perm/kate/SettingsPaint;)V

    .line 180
    return-void
.end method
