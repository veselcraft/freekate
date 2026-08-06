.class Lcom/perm/kate/PrivacyItemActivity$10;
.super Ljava/lang/Object;
.source "PrivacyItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PrivacyItemActivity;
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
    .param p1, "this$0"    # Lcom/perm/kate/PrivacyItemActivity;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$10;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity$10;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/PrivacyItemActivity;->access$700(Lcom/perm/kate/PrivacyItemActivity;I)V

    .line 482
    return-void
.end method
