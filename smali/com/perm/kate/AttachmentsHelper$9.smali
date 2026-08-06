.class Lcom/perm/kate/AttachmentsHelper$9;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$9;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x0

    .line 978
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Document;

    .line 979
    .local v0, "document":Lcom/perm/kate/api/Document;
    new-instance v1, Lcom/perm/kate/DocClickHelper;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper$9;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/DocClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V

    iget-wide v2, v0, Lcom/perm/kate/api/Document;->id:J

    iget-wide v4, v0, Lcom/perm/kate/api/Document;->owner_id:J

    iget-object v6, v0, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    iget-object v7, v0, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    iget-object v8, v0, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/perm/kate/api/Document;->access_key:Ljava/lang/String;

    iget-object v11, v0, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/DocClickHelper;->createContextMenu(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .end local v0    # "document":Lcom/perm/kate/api/Document;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 980
    :catch_0
    move-exception v12

    .line 981
    .local v12, "th":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 982
    invoke-static {v12, v13}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
