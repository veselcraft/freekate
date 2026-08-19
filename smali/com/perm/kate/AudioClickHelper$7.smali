.class Lcom/perm/kate/AudioClickHelper$7;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Lcom/perm/kate/AudioClickHelperCallback2;


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;I)V
    .locals 0

    .line 449
    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$7;->val$context:Landroid/app/Activity;

    iput p3, p0, Lcom/perm/kate/AudioClickHelper$7;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audiosDownloaded(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;)V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$7;->val$context:Landroid/app/Activity;

    iget v1, p0, Lcom/perm/kate/AudioClickHelper$7;->val$source:I

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v2, v1}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    return-void
.end method
