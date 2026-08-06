.class Lcom/perm/kate/PrivacyActivity$4;
.super Ljava/lang/Object;
.source "PrivacyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PrivacyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PrivacyActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PrivacyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PrivacyActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/perm/kate/PrivacyActivity$4;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/PrivacyItem;

    .line 245
    .local v0, "pi":Lcom/perm/kate/api/PrivacyItem;
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/perm/kate/PrivacyActivity$4;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/PrivacyActivity;->access$300(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacyItem;)V

    .line 247
    :cond_0
    return-void
.end method
