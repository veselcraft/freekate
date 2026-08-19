.class Lcom/perm/kate/WallMessageActivity$18;
.super Landroid/text/style/ClickableSpan;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ad:Z

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$gl:Lcom/perm/kate/GroupLink;

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$statistics:Ljava/util/List;

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/GroupLink;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$18;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/WallMessageActivity$18;->val$gl:Lcom/perm/kate/GroupLink;

    iput-boolean p3, p0, Lcom/perm/kate/WallMessageActivity$18;->val$ad:Z

    iput-object p4, p0, Lcom/perm/kate/WallMessageActivity$18;->val$statistics:Ljava/util/List;

    iput-object p5, p0, Lcom/perm/kate/WallMessageActivity$18;->val$post_ids:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/WallMessageActivity$18;->val$ad_data:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/WallMessageActivity$18;->val$track_code:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 795
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$18;->val$activity:Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$18;->val$gl:Lcom/perm/kate/GroupLink;

    invoke-static {p1, v0}, Lcom/perm/kate/WallMessageActivity;->access$800(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V

    .line 798
    iget-boolean p1, p0, Lcom/perm/kate/WallMessageActivity$18;->val$ad:Z

    if-eqz p1, :cond_2

    .line 799
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$18;->val$gl:Lcom/perm/kate/GroupLink;

    iget-object v0, p1, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    .line 800
    iget-object p1, p1, Lcom/perm/kate/GroupLink;->domain:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 801
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$18;->val$gl:Lcom/perm/kate/GroupLink;

    iget-object v0, v0, Lcom/perm/kate/GroupLink;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$18;->val$statistics:Ljava/util/List;

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$18;->val$post_ids:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity$18;->val$ad_data:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/WallMessageActivity$18;->val$track_code:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3, v0}, Lcom/perm/utils/AdEvents;->reportPostLinkClick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
