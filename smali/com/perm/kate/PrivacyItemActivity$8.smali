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
    .param p1, "this$0"    # Lcom/perm/kate/PrivacyItemActivity;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity$8;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 434
    .local v4, "tag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 435
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "params":[Ljava/lang/String;
    array-length v6, v3

    if-le v6, v0, :cond_0

    .line 437
    aget-object v1, v3, v0

    .line 438
    .local v1, "id":Ljava/lang/String;
    const-string v6, "user_id"

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 439
    .local v2, "is_user":Z
    array-length v6, v3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 440
    .local v0, "denied_to":Z
    :goto_0
    iget-object v5, p0, Lcom/perm/kate/PrivacyItemActivity$8;->this$0:Lcom/perm/kate/PrivacyItemActivity;

    invoke-static {v5, v1, v2, v0}, Lcom/perm/kate/PrivacyItemActivity;->access$600(Lcom/perm/kate/PrivacyItemActivity;Ljava/lang/String;ZZ)V

    .line 443
    .end local v0    # "denied_to":Z
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "is_user":Z
    .end local v3    # "params":[Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "is_user":Z
    .restart local v3    # "params":[Ljava/lang/String;
    :cond_1
    move v0, v5

    .line 439
    goto :goto_0
.end method
