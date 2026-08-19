.class Lcom/perm/kate/ProfileInfoFragment$7;
.super Lcom/perm/kate/session/Callback;
.source "ProfileInfoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$7;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 589
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 590
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 591
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$7;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v0, v0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x6

    invoke-virtual {p1, v6, v7, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhotos(JJ)Z

    .line 592
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 593
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$7;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object p1, p1, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v2, -0x6

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createAlbumPhotos(Ljava/util/ArrayList;JJ)V

    return-void
.end method
