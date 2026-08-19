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

    .line 176
    iput-object p1, p0, Lcom/perm/kate/SettingsPaint$5;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$5;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1, p2}, Lcom/perm/kate/SettingsPaint;->access$502(Lcom/perm/kate/SettingsPaint;Z)Z

    .line 180
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$5;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1}, Lcom/perm/kate/SettingsPaint;->access$200(Lcom/perm/kate/SettingsPaint;)V

    return-void
.end method
