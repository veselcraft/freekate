.class Lcom/perm/kate/PrivacyItemActivity$6;
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

    .line 291
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$6;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 294
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$6;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-virtual {p1}, Lcom/perm/kate/PrivacyItemActivity;->save()V

    return-void
.end method
