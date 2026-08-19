.class Lcom/perm/kate/PrivacyItemActivity$8;
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

    .line 393
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$8;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ":"

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 399
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 400
    aget-object v0, p1, v1

    const/4 v2, 0x0

    .line 401
    aget-object v3, p1, v2

    const-string v4, "user_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 402
    array-length p1, p1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 403
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$8;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {p1, v0, v3, v1}, Lcom/perm/kate/PrivacyItemActivity;->access$600(Lcom/perm/kate/PrivacyItemActivity;Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method
