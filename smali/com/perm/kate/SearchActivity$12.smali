.class Lcom/perm/kate/SearchActivity$12;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/perm/kate/VideoMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$12;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeDelete(J)V
    .locals 0

    return-void
.end method

.method public faveChanged(JJZ)V
    .locals 0

    return-void
.end method

.method public userLikesChanged(JJZ)V
    .locals 3

    .line 556
    iget-object p3, p0, Lcom/perm/kate/SearchActivity$12;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object p3, p3, Lcom/perm/kate/SearchActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/perm/kate/api/Video;

    .line 557
    iget-wide v0, p4, Lcom/perm/kate/api/Video;->vid:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 558
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p4, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    .line 561
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$12;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5100(Lcom/perm/kate/SearchActivity;)V

    return-void
.end method
