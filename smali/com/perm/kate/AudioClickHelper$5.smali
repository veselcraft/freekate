.class Lcom/perm/kate/AudioClickHelper$5;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$podcast:Lcom/perm/kate/api/Audio;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$5;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$5;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$5;->val$podcast:Lcom/perm/kate/api/Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 285
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$5;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$5;->val$podcast:Lcom/perm/kate/api/Audio;

    invoke-static {p1, p2}, Lcom/perm/kate/AudioClickHelper;->access$1000(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$5;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$5;->val$podcast:Lcom/perm/kate/api/Audio;

    invoke-static {p1, p2}, Lcom/perm/kate/AudioClickHelper;->access$900(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$5;->this$0:Lcom/perm/kate/AudioClickHelper;

    invoke-static {p1}, Lcom/perm/kate/AudioClickHelper;->access$800(Lcom/perm/kate/AudioClickHelper;)V

    goto :goto_0

    .line 290
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$5;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$5;->val$podcast:Lcom/perm/kate/api/Audio;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/perm/kate/AudioClickHelper;->sendToWall(Lcom/perm/kate/api/Audio;J)V

    goto :goto_0

    .line 287
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$5;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$5;->val$podcast:Lcom/perm/kate/api/Audio;

    invoke-static {p1, p2}, Lcom/perm/kate/AudioClickHelper;->access$700(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 304
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
