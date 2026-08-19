.class Lcom/perm/utils/Linkify$1;
.super Landroid/text/style/URLSpan;
.source "Linkify.java"


# instance fields
.field final synthetic val$ad:Z

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$statistics:Ljava/util/List;

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-boolean p2, p0, Lcom/perm/utils/Linkify$1;->val$ad:Z

    iput-object p3, p0, Lcom/perm/utils/Linkify$1;->val$statistics:Ljava/util/List;

    iput-object p4, p0, Lcom/perm/utils/Linkify$1;->val$post_ids:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/utils/Linkify$1;->val$ad_data:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/utils/Linkify$1;->val$track_code:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 46
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 47
    iget-boolean p1, p0, Lcom/perm/utils/Linkify$1;->val$ad:Z

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/perm/utils/Linkify$1;->val$statistics:Ljava/util/List;

    iget-object v0, p0, Lcom/perm/utils/Linkify$1;->val$post_ids:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/utils/Linkify$1;->val$ad_data:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/utils/Linkify$1;->val$track_code:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/perm/utils/AdEvents;->reportPostLinkClick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
