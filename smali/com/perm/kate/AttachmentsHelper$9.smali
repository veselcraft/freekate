.class Lcom/perm/kate/AttachmentsHelper$9;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1209
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$9;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 12

    const/4 v0, 0x0

    .line 1213
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Document;

    .line 1214
    new-instance v1, Lcom/perm/kate/DocClickHelper;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper$9;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v1, v2, v0}, Lcom/perm/kate/DocClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V

    iget-wide v2, p1, Lcom/perm/kate/api/Document;->id:J

    iget-wide v4, p1, Lcom/perm/kate/api/Document;->owner_id:J

    iget-object v6, p1, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    iget-object v7, p1, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    iget-object v8, p1, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/perm/kate/api/Document;->access_key:Ljava/lang/String;

    iget-object v11, p1, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/DocClickHelper;->createContextMenu(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1217
    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
