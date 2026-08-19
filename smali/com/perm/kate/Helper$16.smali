.class Lcom/perm/kate/Helper$16;
.super Lcom/perm/kate/session/Callback;
.source "Helper.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .line 1786
    iput-object p2, p0, Lcom/perm/kate/Helper$16;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 1789
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 1790
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1791
    invoke-static {p1}, Lcom/perm/kate/StoriesActivity;->getMissingUsers(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 1792
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Story;

    iget-object v1, p0, Lcom/perm/kate/Helper$16;->val$context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/perm/kate/StoriesActivity;->openStory(Lcom/perm/kate/api/Story;Ljava/util/ArrayList;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
