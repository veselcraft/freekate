.class Lcom/perm/kate/PhotoViewerActrivity$8$1$1;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity$8$1;Landroid/app/Activity;)V
    .locals 0

    .line 759
    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 762
    check-cast p1, Ljava/util/ArrayList;

    .line 763
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    return-void
.end method
