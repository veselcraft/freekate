.class Lcom/perm/kate/SettingsPaint$1;
.super Ljava/lang/Object;
.source "SettingsPaint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 98
    iput-object p1, p0, Lcom/perm/kate/SettingsPaint$1;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$1;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0}, Lcom/perm/kate/SettingsPaint;->access$000(Lcom/perm/kate/SettingsPaint;)V

    .line 102
    return-void
.end method
