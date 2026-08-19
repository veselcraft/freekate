.class Lcom/perm/kate/MessageThreadFragment$40;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 2233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2237
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    return-void
.end method
