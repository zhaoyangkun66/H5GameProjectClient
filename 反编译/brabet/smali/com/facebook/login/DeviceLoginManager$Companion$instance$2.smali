.class public final Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;
.super Lḓ/ᓭ/㺴/㧦;
.source ""

# interfaces
.implements Lḓ/ᓭ/㚬/உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceLoginManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u1e13/\u14ed/\u3eb4/\u39e6;",
        "L\u1e13/\u14ed/\u36ac/\u0b89<",
        "Lcom/facebook/login/DeviceLoginManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;

    invoke-direct {v0}, Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;-><init>()V

    sput-object v0, Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;->INSTANCE:Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lḓ/ᓭ/㺴/㧦;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/facebook/login/DeviceLoginManager;
    .locals 1

    new-instance v0, Lcom/facebook/login/DeviceLoginManager;

    invoke-direct {v0}, Lcom/facebook/login/DeviceLoginManager;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/login/DeviceLoginManager$Companion$instance$2;->invoke()Lcom/facebook/login/DeviceLoginManager;

    move-result-object v0

    return-object v0
.end method
