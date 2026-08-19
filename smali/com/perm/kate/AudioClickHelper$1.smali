.class Lcom/perm/kate/AudioClickHelper$1;
.super Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;
.source "AudioClickHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$1;->this$0:Lcom/perm/kate/AudioClickHelper;

    invoke-direct {p0}, Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public audioSelectForMove(JZJ)V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$1;->this$0:Lcom/perm/kate/AudioClickHelper;

    new-instance v1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p3, p2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/AudioClickHelper;->showAlbumActivityForMove(Ljava/util/ArrayList;JLandroidx/fragment/app/Fragment;J)V

    return-void
.end method
