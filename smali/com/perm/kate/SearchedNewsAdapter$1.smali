.class Lcom/perm/kate/SearchedNewsAdapter$1;
.super Ljava/lang/Object;
.source "SearchedNewsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchedNewsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchedNewsAdapter;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/perm/kate/SearchedNewsAdapter$1;->this$0:Lcom/perm/kate/SearchedNewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f090186

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 214
    iget-object v2, p0, Lcom/perm/kate/SearchedNewsAdapter$1;->this$0:Lcom/perm/kate/SearchedNewsAdapter;

    invoke-static {v2}, Lcom/perm/kate/SearchedNewsAdapter;->access$000(Lcom/perm/kate/SearchedNewsAdapter;)Lcom/perm/utils/UserCache;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 218
    iget-object v2, p0, Lcom/perm/kate/SearchedNewsAdapter$1;->this$0:Lcom/perm/kate/SearchedNewsAdapter;

    invoke-static {v2}, Lcom/perm/kate/SearchedNewsAdapter;->access$100(Lcom/perm/kate/SearchedNewsAdapter;)Lcom/perm/utils/GroupCache;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroup(Lcom/perm/kate/api/Group;Z)V

    .line 224
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter$1;->this$0:Lcom/perm/kate/SearchedNewsAdapter;

    invoke-static {v0}, Lcom/perm/kate/SearchedNewsAdapter;->access$200(Lcom/perm/kate/SearchedNewsAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->profileClick(Landroid/view/View;Landroid/app/Activity;)V

    :cond_2
    return-void
.end method
