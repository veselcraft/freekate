.class Lcom/perm/kate/SearchActivity$43;
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

    .line 1581
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$43;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 1584
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$43;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->docs:Ljava/util/ArrayList;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Document;

    .line 1585
    new-instance v2, Lcom/perm/kate/DocClickHelper;

    iget-object v3, v0, Lcom/perm/kate/SearchActivity$43;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/DocClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V

    iget-wide v3, v1, Lcom/perm/kate/api/Document;->id:J

    iget-wide v5, v1, Lcom/perm/kate/api/Document;->owner_id:J

    iget-object v7, v1, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    iget-object v8, v1, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    iget-object v9, v1, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    iget-object v12, v1, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/DocClickHelper;->createContextMenu(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
