.class Lcom/perm/kate/PhotoViewerActrivity$6$1$1;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity$6$1;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/perm/kate/PhotoViewerActrivity$6$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity$6$1;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$2"    # Lcom/perm/kate/PhotoViewerActrivity$6$1;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$6$1$1;->this$2:Lcom/perm/kate/PhotoViewerActrivity$6$1;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 642
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 643
    .local v0, "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    invoke-virtual {v2, v1, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 644
    return-void
.end method
