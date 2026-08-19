.class Lcom/perm/kate/SettingsPaint$7;
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

    .line 197
    iput-object p1, p0, Lcom/perm/kate/SettingsPaint$7;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$7;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
