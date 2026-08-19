.class Lcom/perm/kate/GiftsListAdapter$2;
.super Ljava/lang/Object;
.source "GiftsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsListAdapter;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/perm/kate/GiftsListAdapter$2;->this$0:Lcom/perm/kate/GiftsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 143
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Gift;

    .line 144
    iget-object v0, p1, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/GiftsListAdapter$2;->this$0:Lcom/perm/kate/GiftsListAdapter;

    invoke-static {v1}, Lcom/perm/kate/GiftsListAdapter;->access$000(Lcom/perm/kate/GiftsListAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object p1, p1, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->openPhoto(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 147
    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
