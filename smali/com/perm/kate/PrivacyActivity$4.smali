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

    .line 257
    iput-object p1, p0, Lcom/perm/kate/PrivacyActivity$4;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/PrivacyItem;

    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/perm/kate/PrivacyActivity$4;->this$0:Lcom/perm/kate/PrivacyActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PrivacyActivity;->access$300(Lcom/perm/kate/PrivacyActivity;Lcom/perm/kate/api/PrivacyItem;)V

    :cond_0
    return-void
.end method
