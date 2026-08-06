.class public Lcom/perm/utils/RepostHelper;
.super Ljava/lang/Object;
.source "RepostHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/RepostHelper$RepostCallback;
    }
.end annotation


# instance fields
.field private activity:Lcom/perm/kate/BaseActivity;

.field callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/utils/RepostHelper$RepostCallback;",
            ">;"
        }
    .end annotation
.end field

.field group_id:Ljava/lang/Long;

.field post_id:J

.field post_owner_id:J

.field private repost_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V
    .locals 2
    .param p1, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p2, "callback"    # Lcom/perm/utils/RepostHelper$RepostCallback;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/perm/utils/RepostHelper$2;

    iget-object v1, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/utils/RepostHelper$2;-><init>(Lcom/perm/utils/RepostHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/utils/RepostHelper;->repost_callback:Lcom/perm/kate/session/Callback;

    .line 23
    iput-object p1, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    .line 24
    iget-object v0, p0, Lcom/perm/utils/RepostHelper;->repost_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 25
    if-eqz p2, :cond_0

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/utils/RepostHelper;->callback:Ljava/lang/ref/WeakReference;

    .line 27
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/perm/utils/RepostHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/utils/RepostHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/utils/RepostHelper;->repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/utils/RepostHelper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/utils/RepostHelper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/utils/RepostHelper;->repost_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1, "wall_object"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "group_id"    # Ljava/lang/Long;

    .prologue
    .line 74
    new-instance v0, Lcom/perm/utils/RepostHelper$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/utils/RepostHelper$3;-><init>(Lcom/perm/utils/RepostHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    invoke-virtual {v0}, Lcom/perm/utils/RepostHelper$3;->start()V

    .line 82
    return-void
.end method


# virtual methods
.method public createRepostDialog(JJLjava/lang/Long;)V
    .locals 9
    .param p1, "post_id"    # J
    .param p3, "post_owner_id"    # J
    .param p5, "group_id"    # Ljava/lang/Long;

    .prologue
    const/4 v8, 0x0

    .line 30
    iget-object v5, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    if-nez v5, :cond_0

    .line 51
    :goto_0
    return-void

    .line 32
    :cond_0
    iput-object p5, p0, Lcom/perm/utils/RepostHelper;->group_id:Ljava/lang/Long;

    .line 33
    iput-wide p1, p0, Lcom/perm/utils/RepostHelper;->post_id:J

    .line 34
    iput-wide p3, p0, Lcom/perm/utils/RepostHelper;->post_owner_id:J

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wall"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "wall_object":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 38
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v5, 0x7f03001d

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "captcha_view":Landroid/view/View;
    const v5, 0x7f0e006b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 40
    .local v2, "et_message":Landroid/widget/EditText;
    const v5, 0x7f070204

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 41
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/perm/utils/RepostHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v5, 0x7f0701d0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070261

    new-instance v7, Lcom/perm/utils/RepostHelper$1;

    invoke-direct {v7, p0, v2, v4, p5}, Lcom/perm/utils/RepostHelper$1;-><init>(Lcom/perm/utils/RepostHelper;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07015d

    .line 49
    invoke-virtual {v5, v6, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
