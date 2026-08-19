.class Lcom/perm/kate/NewsCursorAdapter$3;
.super Landroid/text/style/ClickableSpan;
.source "NewsCursorAdapter.java"


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$gl:Lcom/perm/kate/GroupLink;

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$statistics:Ljava/util/List;

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/GroupLink;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$gl:Lcom/perm/kate/GroupLink;

    iput-object p3, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$ad_data:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$statistics:Ljava/util/List;

    iput-object p5, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$post_ids:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$track_code:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 850
    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$activity:Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$gl:Lcom/perm/kate/GroupLink;

    iget-object v0, v0, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->openVK_COMlink(Ljava/lang/String;Landroid/content/Context;)Z

    .line 854
    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$ad_data:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 855
    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$statistics:Ljava/util/List;

    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$post_ids:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$ad_data:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$track_code:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/NewsCursorAdapter$3;->val$gl:Lcom/perm/kate/GroupLink;

    iget-object v3, v3, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/perm/utils/AdEvents;->reportPostLinkClick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
