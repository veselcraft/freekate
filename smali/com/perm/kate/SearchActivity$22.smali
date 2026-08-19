.class Lcom/perm/kate/SearchActivity$22;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 926
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$22;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 929
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$22;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object p1, p1, Lcom/perm/kate/SearchActivity;->groups:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Group;

    iget-wide p1, p1, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 930
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 931
    iget-object p3, p0, Lcom/perm/kate/SearchActivity$22;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object p3, p3, Lcom/perm/kate/SearchActivity;->groups:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/perm/kate/api/Group;

    .line 932
    iget-wide v0, p4, Lcom/perm/kate/api/Group;->gid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p5, v0, v2

    if-nez p5, :cond_0

    .line 933
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 934
    :cond_1
    sget-object p3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p3, p2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateGroups(Ljava/util/ArrayList;)V

    .line 935
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$22;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/NewsCursorAdapter;->ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V

    return-void
.end method
