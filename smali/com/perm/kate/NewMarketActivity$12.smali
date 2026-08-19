.class Lcom/perm/kate/NewMarketActivity$12;
.super Ljava/lang/Object;
.source "NewMarketActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMarketActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMarketActivity;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity$12;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$12;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewMarketActivity;->access$1900(Lcom/perm/kate/NewMarketActivity;Ljava/util/ArrayList;)V

    return-void
.end method
