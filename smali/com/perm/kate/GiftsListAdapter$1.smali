.class Lcom/perm/kate/GiftsListAdapter$1;
.super Ljava/lang/Object;
.source "GiftsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GiftsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GiftsListAdapter;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/perm/kate/GiftsListAdapter$1;->this$0:Lcom/perm/kate/GiftsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 133
    .local v0, "from_id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 134
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GiftsListAdapter$1;->this$0:Lcom/perm/kate/GiftsListAdapter;

    invoke-static {v2}, Lcom/perm/kate/GiftsListAdapter;->access$000(Lcom/perm/kate/GiftsListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 136
    :cond_0
    return-void
.end method
