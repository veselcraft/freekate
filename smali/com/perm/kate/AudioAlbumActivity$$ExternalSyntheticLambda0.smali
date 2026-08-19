.class public final synthetic Lcom/perm/kate/AudioAlbumActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/perm/kate/AudioAlbumActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/perm/kate/AudioAlbumActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$$ExternalSyntheticLambda0;->f$0:Lcom/perm/kate/AudioAlbumActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$$ExternalSyntheticLambda0;->f$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
