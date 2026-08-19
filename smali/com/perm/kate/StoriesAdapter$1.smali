.class Lcom/perm/kate/StoriesAdapter$1;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesAdapter;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/perm/kate/StoriesAdapter$1;->this$0:Lcom/perm/kate/StoriesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090186

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/StoriesAdapter$1;->this$0:Lcom/perm/kate/StoriesAdapter;

    invoke-static {v0}, Lcom/perm/kate/StoriesAdapter;->access$000(Lcom/perm/kate/StoriesAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/StoriesAdapter$1;->this$0:Lcom/perm/kate/StoriesAdapter;

    invoke-static {v0}, Lcom/perm/kate/StoriesAdapter;->access$000(Lcom/perm/kate/StoriesAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
