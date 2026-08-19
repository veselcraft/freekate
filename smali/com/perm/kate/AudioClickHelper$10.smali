.class Lcom/perm/kate/AudioClickHelper$10;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$aid:Ljava/lang/Long;

.field final synthetic val$oid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$10;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$10;->val$aid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$10;->val$oid:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 554
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$10;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$10;->val$aid:Ljava/lang/Long;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$10;->val$oid:Ljava/lang/Long;

    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/AudioClickHelper;->DeleteAudio(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
