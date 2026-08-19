.class Lcom/perm/kate/GiftsListAdapter$1;
.super Ljava/lang/Object;
.source "GiftsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsListAdapter;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/perm/kate/GiftsListAdapter$1;->this$0:Lcom/perm/kate/GiftsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GiftsListAdapter$1;->this$0:Lcom/perm/kate/GiftsListAdapter;

    invoke-static {v0}, Lcom/perm/kate/GiftsListAdapter;->access$000(Lcom/perm/kate/GiftsListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
