.class Lcom/perm/kate/PrivacyItemActivity$4;
.super Ljava/lang/Object;
.source "PrivacyItemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PrivacyItemActivity;->successInUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PrivacyItemActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PrivacyItemActivity;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$4;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity$4;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 267
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity$4;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
