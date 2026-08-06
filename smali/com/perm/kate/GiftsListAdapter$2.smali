.class Lcom/perm/kate/GiftsListAdapter$2;
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
    .line 139
    iput-object p1, p0, Lcom/perm/kate/GiftsListAdapter$2;->this$0:Lcom/perm/kate/GiftsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Gift;

    .line 144
    .local v0, "gift":Lcom/perm/kate/api/Gift;
    iget-object v2, v0, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/GiftsListAdapter$2;->this$0:Lcom/perm/kate/GiftsListAdapter;

    invoke-static {v3}, Lcom/perm/kate/GiftsListAdapter;->access$000(Lcom/perm/kate/GiftsListAdapter;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/perm/kate/Helper;->openPhoto(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "gift":Lcom/perm/kate/api/Gift;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
