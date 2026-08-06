.class Lcom/perm/kate/SearchedNewsAdapter$1;
.super Ljava/lang/Object;
.source "SearchedNewsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchedNewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchedNewsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchedNewsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchedNewsAdapter;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/perm/kate/SearchedNewsAdapter$1;->this$0:Lcom/perm/kate/SearchedNewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 200
    const v3, 0x7f0e026f

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 201
    .local v2, "user_id":Ljava/lang/Long;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 202
    iget-object v3, p0, Lcom/perm/kate/SearchedNewsAdapter$1;->this$0:Lcom/perm/kate/SearchedNewsAdapter;

    invoke-static {v3}, Lcom/perm/kate/SearchedNewsAdapter;->access$000(Lcom/perm/kate/SearchedNewsAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 203
    .local v1, "u":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_0

    .line 204
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, v1, v8}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 212
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/SearchedNewsAdapter$1;->this$0:Lcom/perm/kate/SearchedNewsAdapter;

    invoke-static {v3}, Lcom/perm/kate/SearchedNewsAdapter;->access$200(Lcom/perm/kate/SearchedNewsAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/perm/kate/NewsCursorAdapter;->profileClick(Landroid/view/View;Landroid/app/Activity;)V

    .line 213
    :cond_1
    return-void

    .line 205
    :cond_2
    if-eqz v2, :cond_1

    .line 206
    iget-object v3, p0, Lcom/perm/kate/SearchedNewsAdapter$1;->this$0:Lcom/perm/kate/SearchedNewsAdapter;

    invoke-static {v3}, Lcom/perm/kate/SearchedNewsAdapter;->access$100(Lcom/perm/kate/SearchedNewsAdapter;)Ljava/util/HashMap;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 207
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    .line 208
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, v0, v8}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    goto :goto_0
.end method
